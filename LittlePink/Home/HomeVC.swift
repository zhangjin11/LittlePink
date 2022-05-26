//
//  HomeVC.swift
//  LittlePink
//
//  Created by john on 2022/5/25.
//

import UIKit
import XLPagerTabStrip

class HomeVC: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        
        
        self.settings.style.buttonBarBackgroundColor = .green
        self.settings.style.selectedBarHeight = 4
        self.settings.style.selectedBarBackgroundColor = UIColor(named: "mainColor")!
        
        self.settings.style.buttonBarItemBackgroundColor = .yellow
        self.settings.style.buttonBarItemTitleColor = .label
        self.settings.style.buttonBarItemFont = .systemFont(ofSize: 16)
        self.settings.style.buttonBarItemLeftRightMargin = 0
        
        super.viewDidLoad()
        
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }

            oldCell?.label.textColor = .secondaryLabel
            newCell?.label.textColor = .red

        }
        
        
        
        containerView.bounces = false //去掉左右滑到底时的自动弹回
        
        
        DispatchQueue.main.async {
            //主线程运行
            self.moveToViewController(at: 1, animated: false)
        }
        
        
       
        
    }
    

//    override func calculateStretchedCellWidths(_ minimumCellWidths: [CGFloat], suggestedStretchedCellWidth: CGFloat, previousNumberOfLargeCells: Int) -> CGFloat {
//        30
//    }
    
    
    
    
    
    
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let vc1 =  self.storyboard!.instantiateViewController(withIdentifier: "FollowVC")
        let vc2 =  self.storyboard!.instantiateViewController(withIdentifier: "NerbyVC")
        let vc3 =  self.storyboard!.instantiateViewController(withIdentifier: "DiscoveryVC")
        return [vc1,vc2,vc3]
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
