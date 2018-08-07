//
//  ItemListProtocols.swift
//  Tonight's Movie
//
//  Created by Maxime Maheo on 07/08/2018.
//  Copyright (c) 2018 Maxime Maheo. All rights reserved.
//

import Foundation
import UIKit

// ======== Coordinator ======== //

//protocol ItemListCoordinatorDelegate: class {
//    func coordinator(_ coordinator: Coordinator, finishedWithSuccess success: Bool)
//}

// PRESENTER -> COORDINATOR
protocol ItemListCoordinatorInput: class {

}

// ======== Interactor ======== //

// PRESENTER -> INTERACTOR
protocol ItemListInteractorInput {
    func perform(_ request: ItemList.Request.FetchNowPlayingMovies)
}

// INTERACTOR -> PRESENTER (indirect)
protocol ItemListInteractorOutput: class {
    func present(_ response: ItemList.Response.NowPlayingMoviesFetched)
    func present(_ response: ItemList.Response.Error)
}

// ======== Presenter ======== //

// VIEW -> PRESENTER
protocol ItemListPresenterInput {
    
    // MARK: - Properties -
    var numberOfItems: Int { get }
    
    // MARK: - Methods -
    func viewCreated()
    func configure(item: ItemListCellProtocol, at indexPath: IndexPath)
    func displayNext()
}

// PRESENTER -> VIEW
protocol ItemListPresenterOutput: class {
    func display(_ displayModel: ItemList.DisplayData.Items)
    func display(_ displayModel: ItemList.DisplayData.Error)
}