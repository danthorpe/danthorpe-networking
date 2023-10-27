extension Error {

  public var httpRequest: HTTPRequestData? {
    asNetworkingError?.request
  }

  public var httpResponse: HTTPResponseData? {
    asNetworkingError?.response
  }

  public var httpBodyStringRepresentation: String? {
    asNetworkingError?.bodyStringRepresentation
  }

  private var asNetworkingError: (any NetworkingError)? {
    (self as? any NetworkingError)
  }
}
