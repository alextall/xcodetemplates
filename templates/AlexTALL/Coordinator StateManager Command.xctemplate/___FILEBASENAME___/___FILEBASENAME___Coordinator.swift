import Combine
import Foundation
import UIKit

final class ___FILEBASENAMEASIDENTIFIER___ {
    private let window: UIWindow
    private let rootViewController: UIViewController

    let service: ___FILEBASENAMEASIDENTIFIER___Service

    private var bag: Set<AnyCancellable>

    public init(window: UIWindow, service: ___FILEBASENAMEASIDENTIFIER___Service) {
        self.window = window
        self.service = service
        self.bag = .init()
        self.rootViewController = .init()
        bag = .init()
    }
}

// MARK: - View Instantiation

private extension ___FILEBASENAMEASIDENTIFIER___ {
    var storyboard: UIStoryboard {
        .init(name: "Main", bundle: .module)
    }
}

// MARK: - Start

extension ___FILEBASENAMEASIDENTIFIER___ {
    func start() {

    }
}

// MARK: - Bindings

private extension ___FILEBASENAMEASIDENTIFIER___ {
    func setupBindings() {
        service.state
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: process)
            .store(in: &bag)
    }

    func process(_ state: ___FILEBASENAMEASIDENTIFIER___Service.State) {
        switch state {
        case .initial: break
        }
    }
}
