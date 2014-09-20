import logging
import serial
import time

logger = logging.getLogger(__name__)

class SingleLuxDevice(object):

    def __init__(self, port, baudrate=115200):
        self.ser = serial.Serial(port, baudrate)
        self.addresses = {}

    def close(self):
        self.ser.close()

    def raw_packet(self, data):
        logger.debug("Serial Data: %s", ';'.join(map(lambda x: "{:02x}".format(x), data)))
        #print ("Serial Data: %s", ';'.join(map(lambda x: "{:02x}".format(x), data)))
        self.ser.write("".join([chr(d) for d in data]))

    def flush(self):
        self.ser.flush()

    def cobs_packet(self, data):
        #print ("Not encoded: %s", ';'.join(map(lambda x: "{:02x}".format(x), data)))
        rdata = []
        i = 0
        for d in data[::-1]:
            i += 1
            if d == 0:
                rdata.append(i)
                i = 0
            else:
                rdata.append(d)
        self.raw_packet([0, i+1] + rdata[::-1])
        

    def framed_packet(self, data=None, flags=0x00, addr=0x00):
        if data is None or len(data) > 250:
            raise Exception("invalid data")
        data=list(data)
        while len(data) < 8:
            data.append(0)
        crc_frame = [addr, flags] + data
        checksum = sum(crc_frame) & 0xff
        frame = [len(data), checksum] + crc_frame
        self.cobs_packet(frame)

