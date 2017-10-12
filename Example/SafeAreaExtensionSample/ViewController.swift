//
//  ViewController.swift
//  SafeAreaExtensionSample
//
//  Created by marty-suzuki on 2017/10/13.
//  Copyright © 2017年 marty-suzuki. All rights reserved.
//

import UIKit
import SafeAreaExtension

final class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.safeArea.insetsDidChange = { insets in
            print("view.safeAreaInsets = \(insets)")
        }
        
        scrollView.safeArea.insetsDidChange = { insets in
            print("scrollView.safeAreaInsets = \(insets)")
        }
        
        tableView.safeArea.insetsDidChange = { insets in
            print("tableView.safeAreaInsets = \(insets)")
        }
        
        collectionView.safeArea.insetsDidChange = { insets in
            print("collectionView,safeAreaInsets = \(insets)")
        }
    }
}

