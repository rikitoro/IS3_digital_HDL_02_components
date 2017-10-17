# IS3 ディジタル技術

## HDL実習

## 基本的な回路

力武克彰、武田正則、菅谷純一

---

## NOTゲート

次ページのnot_gateモジュールを実習ボードに実装し、
動作を確かめましょう。

ポートの割り当ては下記の表の通りにしてください。

|node name|I/Oデバイス|
|:---|:---|
|x|SW0|
|y|LEDR0|

---
### NOT ゲート

```
`default_nettype none

module not_gate(
  input wire    x,
  output wire   y
);

  assign y = ~x;

endmodule
```

---

# AND, OR, XOR ゲート

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

```
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

```
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

```
`default_nettype none

module xor_gate(
  input wire [1:0] x,
  output wire      y
);

  assign y = x[1] ^ x[0];

endmodule
```
