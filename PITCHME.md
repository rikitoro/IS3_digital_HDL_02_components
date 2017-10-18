# IS3 ディジタル技術

## HDL実習

## 基本的な回路(組合せ回路)

力武克彰、武田正則、菅谷純一

---

## 基本的な論理ゲート(NOT)

次ページのnot_gateモジュールを実習ボードに実装し、
動作を確かめましょう。

ポートの割り当ては下記の表の通りにしてください。

|node name|I/Oデバイス|
|:---|:---|
|x|SW0|
|y|LEDR0|

---
### NOT ゲート

```verilog
`default_nettype none

module not_gate(
  input wire    x,
  output wire   y
);

  assign y = ~x;

endmodule
```

assign文で出力yの信号線に入力xのNOTを割り当てています。

---

# 基本的な論理ゲート(AND, OR, XOR)

次ページ以降のand_gate, or_gate, xor_gateモジュールをそれぞれ実習ボードに実装し、
動作を確かめましょう。

ポートの割り当ては下記の表の通りにしてください。

|node name|I/Oデバイス|
|:---|:---|
|x[1]|SW1|
|x[0]|SW0|
|y|LEDR0|

---
### ANDゲート

```verilog
`default_nettype none

module and_gate(
  input wire [1:0] x,
  output wire      y
);

  assign y = x[1] & x[0];

endmodule
```

---
### ORゲート

```verilog
`default_nettype none

module or_gate(
  input wire [1:0] x,
  output wire      y
);

  assign y = x[1] | x[0];

endmodule
```

---
### XORゲート

```verilog
`default_nettype none

module xor_gate(
  input wire [1:0] x,
  output wire      y
);

  assign y = x[1] ^ x[0];

endmodule
```

---
## ビット演算 bitwise operation

これまで動作を確認してきたNOT, AND, OR, XORは、
ビット演算(bitwise operation)にも使うことができます。

次ページ以降のbitwise_and, bitwise_xorモジュールをそれぞれ実習ボードに実装し、
動作を確かめましょう。

ポートの割り当ては下記の表の通りにしてください。

|node name|I/Oデバイス|
|:---|:---|
|x1[3:0]|SW7-SW4|
|x0[3:0]|SW3-0|
|y[3:0]|LEDR3-0|

---
### bitwise AND operation

```verilog
`default_nettype none

module bitwise_and(
  input wire [3:0] x0,
  input wire [3:0] x1,
  output wire [3:0] y
);

  assign y = x1 & x0; // bitwise 'AND' operation

endmodule

```

---
### bitwise XOR operation

```verilog
`default_nettype none

module bitwise_xor(
  input wire [3:0] x0,
  input wire [3:0] x1,
  output wire [3:0] y
);

  assign y = x1 ^ x0; // bitwise 'XOR' operation

endmodule
```

---
## ビット演算 bitwise operation

verilog HDLでは加算器、減算器も簡単に記述することができます。

次ページ以降のadder, subtractorモジュールをそれぞれ実習ボードに実装し、
動作を確かめましょう。

ポートの割り当ては下記の表の通りにしてください。

|node name|I/Oデバイス|
|:---|:---|
|x1[3:0]|SW7-SW4|
|x0[3:0]|SW3-0|
|y[4:0]|LEDR4-0|

---
### 加算器

```verilog
`default_nettype none

module adder(
  input wire [3:0] x0,
  input wire [3:0] x1,
  output wire [4:0] y // 5-bit
);

  assign y = x1 + x0; // add

endmodule
```

---
### 減算器

```verilog
`default_nettype none

module adder(
  input wire [3:0] x0,
  input wire [3:0] x1,
  output wire [4:0] y
);

  assign y = x1 - x0; // subtract

endmodule
```

---
## モジュール内部に信号線を持つ回路の設計

これまでは、入力・出力ポートの名前だけを用いて回路の設計を行いました。
Verilog HDLでは、モジュール内部の信号線に名前を付けて、
より複雑な回路を設計することができます。

次ページのmy_xorモジュールをそれぞれ実習ボードに実装し、
動作を確かめましょう。

ポートの割り当ては下記の表の通りにしてください。

|node name|I/Oデバイス|
|:---|:---|
|a|SW1|
|b|SW0|
|y|LEDR0|

---

```verilog
`default_nettype none

module my_xor(
  input wire a,
  input wire b,
  output wire y
);
  wire c1;
  wire c2; 

  assign c1 = a & ~b;
  assign c2 = ~a & b;

  assign y = c1 | c2;

endmodule
```

どの様な回路が設計されているか、回路図を描いて考えてみましょう。
