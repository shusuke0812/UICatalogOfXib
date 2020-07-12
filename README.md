Xibを使った実装例
====
　
## 開発環境
- Xcode version 11.3.1
- pod version 1.9.1
- MacOS Catalina version 10.15.4

## 概要
### Standard UI  
<table border="0">
<tr>
<td><img width="300" src="https://user-images.githubusercontent.com/33107697/87175266-61279380-c313-11ea-91df-442b0c0e05a7.png"></td>
<td><img width="300" src="https://user-images.githubusercontent.com/33107697/87175384-87e5ca00-c313-11ea-8142-2e3b950ea6a1.png"></td>
<td><img width="300" src="https://user-images.githubusercontent.com/33107697/87220749-a72b3880-c3a1-11ea-915e-96e5c2f77b41.png"></td>
</tr>
</table>
  
### Scroll View with Floating Button  
<table border="0">
<tr>
<td><img width="160" src="https://user-images.githubusercontent.com/33107697/87242340-b45e2b00-c466-11ea-98c3-0a0cfa682c02.gif"></td>
</tr>
</table>
  


### Memo
UIImageでXibファイルを作るときは、  
下記に示すイニシャライザ・Viewの読み込みをまとめたXibViewクラスを継承する  
  
```swift
class XibView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadNib()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.loadNib()
    }
    private func loadNib() {
        // 自身と同じclass名のxibを読み込む
        let className: String = String(describing: type(of: self))
        let view: UIView = Bundle.main.loadNibNamed(className, owner: self, options: nil)?.first as! UIView
        view.backgroundColor = .white
        view.frame = self.bounds
        self.addSubview(view)
    }
}
```