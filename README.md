# Serializer-Deserializer
![SerDes Block Diagram](https://user-images.githubusercontent.com/34355989/121235730-2b609700-c863-11eb-905d-a186cc0347bb.jpg)

- A simple implementation of a SerDes module, typically used in high-speed communication protocols like PCIe, USB, DisplayPort, Gigabit Ethernet 

- Serializer latches onto 8-bit Parallel data input, encodes to 10-bit, and converts to Serial bits

- Deserializer converts incoming Serial bits to Parallel data using 10-bit latches, decodes and outputs back as 8-bit

- Followed [specifications](http://www.latticesemi.com/products/designsoftwareandip/intellectualproperty/referencedesigns/referencedesigns01/8b10bencoderdecoder) to implement 3b/4b & 5b/6b encoding schemes and maintain a DC-balance data stream

- RTL design contains basic modules like Latches, Encoder, Decoder, Shift Registers -> Parallel-In-Serial-Out, Serial-In-Parallel-Out
