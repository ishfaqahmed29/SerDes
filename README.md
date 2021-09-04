# Serializer-Deserializer
![SerDes Block Diagram]![SerDes Block Diagram](https://user-images.githubusercontent.com/34355989/132103773-f86af8ed-0689-4c12-b618-52ed0ebe4233.jpg)

- A simple implementation of a SerDes module, typically used in high-speed communication protocols like PCIe, USB, DisplayPort, Gigabit Ethernet

- RTL design contains basic modules like Latches, Encoder, Decoder, Shift Registers -> Parallel-In-Serial-Out, Serial-In-Parallel-Out

- Serializer latches onto 8-bit Parallel data input, encodes to 10-bit, and converts to Serial bits

- Deserializer converts incoming Serial bits to Parallel data using 10-bit latches, decodes and outputs back as 8-bit

- Followed [specifications](http://www.latticesemi.com/products/designsoftwareandip/intellectualproperty/referencedesigns/referencedesigns01/8b10bencoderdecoder) to implement 3b/4b & 5b/6b encoding schemes and maintain a DC-balance data stream

![8b-10b](https://user-images.githubusercontent.com/34355989/131135737-fb6100c9-c64b-45e6-8f66-3da37a93afa2.png)
