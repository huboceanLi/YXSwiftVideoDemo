//
//  AppDelegate.swift
//  YXSwiftVideoDemo
//
//  Created by li437277219@gmail.com on 09/30/2023.
//  Copyright (c) 2023 li437277219@gmail.com. All rights reserved.
//

import UIKit
import XYSwiftVideo
import HYMedia

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate,YXTypeManagerDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        YXTypeManager.shareInstance().delegate = self

        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        
        let vc = YXMainViewController()
        let nav = UINavigationController(rootViewController: vc)
        self.window?.rootViewController = nav
        self.window?.makeKeyAndVisible()

        return true
    }

    func showAd(with type: FromWayType) {
        
        print("展示广告---结束状态")
        YXTypeManager.shareInstance().showAd(withResult: true)
    }
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
            // 在这里指定支持的界面方向
        
        let mask = SJRotationManager.supportedInterfaceOrientations(for: window)
        return mask // 这里使用竖屏方向作为示例，你可以根据需求修改
    }
    
    var shouldAutorotate: Bool {
        
        return true // 返回 true 允许自动旋转，返回 false 禁止自动旋转
    }
    
    var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait // 返回支持的界面方向，可以根据需求修改
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

