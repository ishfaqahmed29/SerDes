# Serializer-Deserializer
A simple implementation of a SerDes module, typically used in high-speed communication protocols like PCIe, DisplayPort, Gigabit Ethernet, USB etc.

![SerDes Block Diagram](https://user-images.githubusercontent.com/34355989/132104019-276ba8cd-9032-41ae-b1d5-96f2250137d3.jpg)

- RTL Design has basic modules like Latches, Encoder, Decoder, Shift Registers -> Parallel-In-Serial-Out, Serial-In-Parallel-Out

- Serializer latches onto 8-bit Parallel data input, encodes to 10-bit, and converts to Serial bits

- Deserializer converts incoming Serial bits to Parallel data using 10-bit latches, decodes and outputs back as 8-bit

- Followed [specifications](http://www.latticesemi.com/products/designsoftwareandip/intellectualproperty/referencedesigns/referencedesigns01/8b10bencoderdecoder) to implement 3b/4b & 5b/6b encoding schemes and maintain a DC-balance data stream

![8b_10b Encoding](https://user-images.githubusercontent.com/34355989/132104163-17ad4b67-e369-4525-8d83-15a4f6f04605.jpg)
