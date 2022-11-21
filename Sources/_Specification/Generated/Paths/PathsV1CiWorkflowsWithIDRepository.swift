// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.CiWorkflows.WithID {
    public var repository: Repository {
        Repository(path: path + "/repository")
    }

    public struct Repository {
        /// Path: `/v1/ciWorkflows/{id}/repository`
        public let path: String

        public func get(fieldsScmGitReferences: [FieldsScmGitReferences]? = nil, fieldsScmProviders: [FieldsScmProviders]? = nil, fieldsScmRepositories: [FieldsScmRepositories]? = nil, include: [Include]? = nil) -> Request<_Specification.ScmRepositoryResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsScmGitReferences, fieldsScmProviders, fieldsScmRepositories, include), id: "ciWorkflows-repository-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsScmGitReferences: [FieldsScmGitReferences]?, _ fieldsScmProviders: [FieldsScmProviders]?, _ fieldsScmRepositories: [FieldsScmRepositories]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsScmGitReferences, forKey: "fields[scmGitReferences]")
            encoder.encode(fieldsScmProviders, forKey: "fields[scmProviders]")
            encoder.encode(fieldsScmRepositories, forKey: "fields[scmRepositories]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsScmGitReferences: String, Codable, CaseIterable {
            case canonicalName
            case isDeleted
            case kind
            case name
            case repository
        }

        public enum FieldsScmProviders: String, Codable, CaseIterable {
            case repositories
            case scmProviderType
            case url
        }

        public enum FieldsScmRepositories: String, Codable, CaseIterable {
            case defaultBranch
            case gitReferences
            case httpCloneURL = "httpCloneUrl"
            case lastAccessedDate
            case ownerName
            case pullRequests
            case repositoryName
            case scmProvider
            case sshCloneURL = "sshCloneUrl"
        }

        public enum Include: String, Codable, CaseIterable {
            case defaultBranch
            case scmProvider
        }
    }
}
