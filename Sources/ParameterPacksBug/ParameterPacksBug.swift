// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftData
public protocol Database: Sendable {
  func fetch<each T: PersistentModel, U: Sendable>(
    descriptors: @escaping @Sendable () -> (repeat FetchDescriptor<each T>),
    with closure: @escaping @Sendable (repeat ([each T])) throws -> U
  ) async throws -> U where  U: Sendable
}

func update (with database: Database) async throws {
  try await database.fetch(descriptors: {()}) {
    
  }
}
