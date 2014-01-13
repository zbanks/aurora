Lux
===

Lux is a serial protocol designed for communication between components in aurora. 

Link Layer
----------

Lux uses RS-422 in half duplex mode. 
Although RS-422 supports multidrop bus topologies, all routing is done point-to-point with exactly two devices per bus. 

Each link has a *master* and a *slave* device. 
A slave device cannot transmit until it receives a command from the master. 
This prevents both devices from attempting to drive the data lines at the same time.

In a Lux network, there are three types of devices:
    - *Host* is the head of the network at acts as at least one master
    - *Router* allows one device to connect to many; acts as a single slave and one or more master(s)
    - *Leaf* acts only as a single slave
