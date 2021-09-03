import Combine

final class ___FILEBASENAMEASIDENTIFIER___ {

    let state: CurrentValueSubject<State, Never>
    let commands: PassthroughSubject<Command, Never>

    private var bag: Set<AnyCancellable>

    init() {
        state = .init(.initial)
        commands = .init()

        bag = .init()
    }
    
    func setupBindings() {
        commands
            .sink(receiveValue: process)
            .store(in: &bag)
    }
}

// MARK: - State

extension ___FILEBASENAMEASIDENTIFIER___ {
    enum State {
        case initial
    }
}

extension ___FILEBASENAMEASIDENTIFIER___.State: Equatable {}

// MARK: - Command Processing

private extension ___FILEBASENAMEASIDENTIFIER___ {
    func process(_ command: Command) {
        switch command {
        default:
            break
        }
    }
}

// MARK: - Error Handling

private extension ___FILEBASENAMEASIDENTIFIER___ {
    func handle(error _: Error) -> AnyPublisher<State, Never> {
        Just(State.initial)
            .eraseToAnyPublisher()
    }
}
