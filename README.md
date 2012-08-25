Tunnel Measurement Scripts
========================

The aim of this code is to test how method of indirection/security/anonymity affect the network connection properties between two machines.

The basicClient and basicServer script use Iperf to generate traffic, tcpdump to monitor it and then tcp trace to extract useful information like throughput and RTT average.

TOR
========================
The first indirection to this connection that I will be implementing is Project Tor, the aim is to set up a connection between the two machines via Tor and run basicClient and basicServer. I need to be able to set up a new identify regularly. This needs to be done in a script or some other language since the tests need to be automated so we can't use the GUI
