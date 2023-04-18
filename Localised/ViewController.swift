//
//  ViewController.swift
//  Localised
//
//  Created by Mac on 18.04.2023.
//

import UIKit

enum L10n {
	enum WelcomeScreen {
		static let welcomeText = L10n.localize("WelcomeScreen.welcomeText")
	}
	
	static func localize(_ key: String) -> String {
		NSLocalizedString(key, comment: key)
	}
}

class ViewController: UIViewController {

	var welcomeLabel: UILabel = {
		let label = UILabel()
		label.textColor = .white
		label.textAlignment = .center
		label.text = L10n.WelcomeScreen.welcomeText
		return label
	}()

	override func viewDidLoad() {
		super.viewDidLoad()
		view.addSubview(welcomeLabel)
		welcomeLabel.frame = view.frame
	}


}

