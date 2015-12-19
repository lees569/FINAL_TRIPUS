//
//  FourthViewController.swift
//  FINAL_TRIPUS
//
//  Created by SHLEE on 12/12/15.
//  Copyright © 2015 SHLEE. All rights reserved.
//

import UIKit
import SceneKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let sceneView = SCNView(frame:CGRect(x: 0, y: 100, width: 375, height: 305)      )
        let scene = SCNScene()
        
        
        sceneView.scene = scene
        scene.background.contents = UIImage(named: "scenekit.png")
        //        sceneView.backgroundColor = UIColor.magentaColor()
        
        sceneView.autoenablesDefaultLighting = true
        sceneView.allowsCameraControl   = true
        sceneView.showsStatistics = hidesBottomBarWhenPushed
        
        //
        //        let sphere = SCNSphere(radius: 1)
        //        let sphereNode = SCNNode(geometry: sphere)
        //        scene.rootNode.addChildNode(sphereNode)
        
        
        
        let node = SCNNode()
        
        node.geometry = SCNSphere(radius: 1)
        node.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "cen.png")
        scene.rootNode.addChildNode(node)
        
        //        let light = SCNLight()
        //       light.color = UIColor.redColor()
        //        let lightNode = SCNNode()
        //        lightNode.light = light
        //        lightNode.position = SCNVector3(x:-30, y:30, z:60)
        //        scene.rootNode.addChildNode(lightNode)
        
        //        let action = SCNAction.rotateByAngle(360 * CGFloat ((M_PI)/180.0), aroundAxis: SCNVector3(x:0, y:1, z:0), duration:8)
        //        let repeatAction = SCNAction.repeatActionForever(action)
        //        node.runAction(repeatAction)
        
        
        view.addSubview(sceneView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func makeCall(sender: AnyObject) {
        
        
        let url:NSURL = NSURL(string: "facetime://wooricom1984@gmail.com")!
        UIApplication.sharedApplication().openURL(url)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
