//
//  ViewModelProtocols.swift
//  FunctionalMarvel
//
//  Created by Segii Shulga on 11/20/15.
//  Copyright © 2015 Sergey Shulga. All rights reserved.
//

import RxSwift

protocol VariableProvidable {
   var variable:Variable<VariableProvidable> {get}
}

protocol ReuseableViewClassProvider {
   var reusableViewType:ReusableView.Type {get}
}

protocol NibProvidableClassProvider {
   var nibProvidableType:NibProvidable.Type {get}
}


protocol AppendableDataSourceType {
   typealias T
   
   func appendItems(animation:UITableViewRowAnimation)(items:[T])
}

protocol ChangeableDataSourceType {
   typealias T
   
   func setItems(animation:UITableViewRowAnimation)(items:[T])
}
