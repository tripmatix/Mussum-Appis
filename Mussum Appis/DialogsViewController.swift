//
//  DialogsViewController.swift
//  Mussum Appis
//
//  Created by Romulo Oliveira Viganico on 05/12/21.
//

import Foundation
import UIKit

class DialogsViewController: UIViewController {
    
    private lazy var firstImage: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let imagem = images()
        imageConfig(imgParam: firstImage, image: imagem.smile!)
        view.addSubview(self.firstImage)
        //fazer acao clicar imagem
//        firstButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        setConstraints()
        
    }
    
    func imageConfig(imgParam: UIImageView, image: UIImage){
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        imgParam.translatesAutoresizingMaskIntoConstraints = false
        imgParam.image = image
        imgParam.contentMode = .scaleToFill
        imgParam.layer.cornerRadius = 10
        imgParam.layer.masksToBounds = true
        imgParam.backgroundColor = .systemGray
        imgParam.isUserInteractionEnabled = true
        imgParam.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer){

        let tappedImage = tapGestureRecognizer.view as! UIImageView
        print("teste")
        let dialogsViewController = DialogsViewController()
        self.navigationItem.backButtonTitle = ""
        self.navigationController?.navigationBar.tintColor = .orange
        self.navigationController?.pushViewController(dialogsViewController, animated: true)
    }
    
    func setConstraints(){
        
        firstImage.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor, constant: -20).isActive = true
        firstImage.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor, constant: -200).isActive = true

//        firstImage.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 30).isActive = true
//        firstImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
//        firstImage.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        
        
        
    }
    
    
}
