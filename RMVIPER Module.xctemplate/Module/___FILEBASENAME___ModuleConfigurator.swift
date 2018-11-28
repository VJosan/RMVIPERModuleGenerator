//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_productName:identifier___ModuleConfigurator
{
    class func configureModule() -> UIViewController
    {
        let viewController = ___VARIABLE_productName:identifier___ViewController.instantiate()
        var presenter: ___VARIABLE_productName:identifier___PresenterProtocol & ___VARIABLE_productName:identifier___InteractorOutputProtocol = ___VARIABLE_productName:identifier___Presenter()
        var interactor: ___VARIABLE_productName:identifier___InteractorInputProtocol = ___VARIABLE_productName:identifier___Interactor()
        let wireFrame: ___VARIABLE_productName:identifier___WireframeProtocol = ___VARIABLE_productName:identifier___Wireframe()
        
        viewController.presenter = presenter
        presenter.view = viewController
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return viewController
    }
}