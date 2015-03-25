//
//  SwiftSVGViewController.swift
//  Breakfast
//
//  Created by collardgreens on 3/24/15.
//  Copyright (c) 2015 Strauss LLC. All rights reserved.
//

import Breakfast
import UIKit

class SwiftSVGViewController: UIViewController {

    @IBOutlet var pathStringView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pizza = "M185.158,60.775l-0.698-4.896c-0.675-3.783-1.681-7.316-3.208-10.128c-5.67-10.472-48.894-65.225-61.319-68.777c-2.081-0.595-7.61-1.974-14.101-1.974c-8.908,0-16.174,2.602-21.013,7.528c-4.369,4.442-6.737,10.636-7.054,18.44c-6.133,2.803-21.237,10.434-25.399,19.22c-2.099,4.433-10.814,8.388-17.817,11.571c-5.636,2.561-10.503,4.771-13.48,7.521c-1.598,1.476-3.766,3.669-6.267,6.202C7.681,52.688-3.083,63.58-9.476,66.273c-7.238,3.047-12.022,7.993-12.489,12.911c-0.249,2.633,0.84,5.033,2.917,6.415c3.74,2.492,17.312,4.357,26.946,4.357c2.032,0,3.994-0.077,5.819-0.237c5.479-0.503,25.312-0.905,44.213-0.905c22.609,0,32.813,0.55,34.684,1.023c3.92,0.995,7.436,0.942,12.58,0.554c3.368-0.246,7.289-0.536,13.075-0.435c5.942,0.118,11.431,0.349,15.948,0.544c4.02,0.169,7.287,0.312,9.459,0.312c1.462,0,2.392-0.06,3.031-0.178c0.235-0.03,1.45-0.127,7.174-0.127c10.246,0,26.791,0.305,26.798,0.305c2.165,0.031,3.745-1.457,4-3.467C184.779,86.538,186.425,73.199,185.158,60.775z M71.908,23.986c8.08-2.059,15.464-0.457,16.491,3.583c1.03,4.036-4.682,8.985-12.758,11.041c-8.079,2.059-15.461,0.459-16.491-3.582C58.125,30.993,63.836,26.049,71.908,23.986z M33.1,44.006c7.807-0.659,14.386,2.201,14.691,6.397c0.312,4.193-5.765,8.144-13.568,8.805c-7.809,0.66-14.387-2.201-14.691-6.4C19.223,48.61,25.297,44.671,33.1,44.006zM122.67,80.658c-0.223,0.481-0.329,0.981-0.344,1.473c-1.275-0.034-2.572-0.064-3.897-0.094c-0.921-0.019-1.791-0.024-2.629-0.024c-4.794,0-8.346,0.267-11.199,0.479c-4.11,0.311-6.946,0.45-10.042-0.332c-4.137-1.05-22.203-1.268-36.628-1.268c-19.423,0-39.159,0.41-44.93,0.938c-1.345,0.124-2.81,0.158-4.291,0.178C23.522,76.224,40.985,70.605,46.118,71.8c3.038,0.724,5.305,1.489,7.307,2.163c4.688,1.583,8.4,2.834,15.098,0.738c1.88-0.587,3.815-1.356,5.77-2.142c6.874-2.748,11.313-4.229,15.043-1.614c8.523,5.97,15.491,4.944,22.228,3.969l0.526-0.071c5.021-0.737,10.051-0.055,11.217,1.509C123.833,77.053,123.603,78.625,122.67,80.658z M111.153,57.015c-10.024,0.743-18.474-2.396-18.876-7.028c-0.406-4.629,7.39-8.989,17.41-9.734c10.022-0.752,18.479,2.397,18.881,7.027C128.974,51.904,121.175,56.27,111.153,57.015zM142.469,51.189c-1.634-5.537-4.103-11.182-7.809-14.091c-9.188-7.221-20.624-16.848-25.173-22.223C108.884,14.164,96.799,0.084,85.878-0.92c0.518-4.697,2.036-8.397,4.593-10.994c4.188-4.261,10.668-5.158,15.364-5.158c5.493,0,10.16,1.168,11.919,1.667c7.153,2.042,38.85,39.213,51.926,57.785c-4.398-1.786-9.489-2.251-15.089-0.152C148.921,44.351,145.108,47.405,142.469,51.189z M177.185,82.824c-5.475-0.083-15.981-0.236-23.304-0.236c-6.653,0-7.854,0.121-8.513,0.236c-0.301,0.047-0.774,0.07-1.361,0.079c0.029-0.512,0.06-1.065,0.077-1.571c0.924-18.863,1.812-27.383,13.295-31.685c9.708-3.65,16.787,4.983,19.528,9.136C178.086,66.809,177.729,76.612,177.185,82.824z"
        let pathStringOnly = CAShapeLayer(pathString: pizza)
        self.pathStringView.layer.addSublayer(pathStringOnly)
    }

}
