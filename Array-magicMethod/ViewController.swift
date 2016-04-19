//
//  ViewController.swift
//  Array-magicMethod
//
//  Created by 贾海涛 on 16/4/19.
//  Copyright © 2016年 贾二狗. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    //点击触发方法
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let array = [1,2,3,4,5,6,7,8,9]
        
        for (x, y) in array.magicMethod(){
            
            print(x, y)
        }
    }

}


//MARK: - Array的扩展方法 - magicMethod()
extension Array {
    
    func magicMethod() -> [(Element, Element)]{
        //定义元祖类型数组
        var array = [(Element, Element)]()
  
        let count = self.count
        //判断数组个数的奇偶性
        if count % 2 == 0{
            
            for var i = 0; i < count; i += 2 //此警告暂时不妨事
            {
                if (i + 1) < count
                {
                    let member = (self[i], self[i+1])
                    array.append(member)
                }
            }
        }
        else
        {
            //数组个数是奇数时
            for var i = 0; i < count - 1; i += 2
            {
                if (i + 1) < count
                {
                    let member = (self[i], self[i+1])
                    array.append(member)
                }
            }
            //最后一个单独处理(为空不知道传什么...)
            array.append((self[count - 1],self[count - 1]))
        }
        
        return array
    }
}

