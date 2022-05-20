//
//  ViewController.swift
//  LittlePink
//
//  Created by john on 2022/5/18.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var myImageV: UIImageView!
    
    
    @IBOutlet weak var myheightCon: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("我的第一次提交这个xcode")
        view.backgroundColor = .systemTeal
        print("我的第二次提交这个xcode")
        print("我的第三次提交这个xcode")
        
        let myImage:UIImage = UIImage(named: "rrtt.jpg")!
        
        let myheight:CGFloat = myImage.size.height
        let mywidth:CGFloat = myImage.size.width
        
        self.myheightCon.constant = (myheight/mywidth)*(view.bounds.width)
        self.myImageV.image = myImage
        
        let mystr:String = "acbakjoisc-00000-A-000000-cnsdojcnsdocndslls"
        let newStr = mystr.filter { (chart) -> Bool in
            return chart.description.elementsEqual("0")
        }
        print(mystr)
        print(newStr)
        
        
        
        
    }


    /*
     
     1.在xcode添加github账号，在Git的设置里面设置访问token
     2.创建本地项目是勾选本地仓库，这样才有权限提交到远程
     3.xcode创建项目后 左边目录第二个里面 的 Remotes 创建 new remote，新的远程仓库
     4.然后提交本地项目到远程仓库就完成了第一次提交。
     5. comd+shift+。显示.开头的隐藏文件 创建.gitignore文件，在https://github.com/gongqiuwei/swift/blob/master/.gitignore
     里的内容复制到 .gitignore文件里，把此文件拖动到根项目目录 LittlePink下，然后提交到github完成忽略文件的忽略
        comd+shift+J 文件中可定位到这文件在左侧的目录位置
     
    
     6.纯代码提交到git      git init  创建本地仓库
                          git add . 提交所有本地文件到本地仓库
                          git status 查看当前本地git状态
                          git commit -m "init" 提交所有本地文件到本地仓库
             git branch -M main 设置主分支为main,替换了以前的master
             git remote add origin https://github.com/zhangjin11/mylocalComd.git ,将已存在的远程仓库联系到本地
             git push -u origin main 第一次后在提交就只需要 git push
     
     
     
     
     
     */
    
    
    
    
}

