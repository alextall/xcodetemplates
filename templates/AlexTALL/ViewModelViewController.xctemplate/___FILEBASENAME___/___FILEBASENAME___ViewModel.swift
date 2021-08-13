import Foundation
import Combine

final class ___FILEBASENAMEASIDENTIFIER___ {
    let commands: PassthroughSubject<Command, Never>

    private var bag: Set<AnyCancellable>

    init() {
        commands = .init()
        bag = .init()

        setupBindings()
    }

    private func setupBindings() {

    }
}

// MARK: -

extension HomeViewModel {

}
