// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.ScmRepositories.WithID {
    public var pullRequests: PullRequests {
        PullRequests(path: path + "/pullRequests")
    }

    public struct PullRequests {
        /// Path: `/v1/scmRepositories/{id}/pullRequests`
        public let path: String

        public func get(fieldsScmPullRequests: [FieldsScmPullRequests]? = nil, fieldsScmRepositories: [FieldsScmRepositories]? = nil, limit: Int? = nil, include: [Include]? = nil) -> Request<_Specification.ScmPullRequestsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsScmPullRequests, fieldsScmRepositories, limit, include), id: "scmRepositories-pullRequests-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsScmPullRequests: [FieldsScmPullRequests]?, _ fieldsScmRepositories: [FieldsScmRepositories]?, _ limit: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsScmPullRequests, forKey: "fields[scmPullRequests]")
            encoder.encode(fieldsScmRepositories, forKey: "fields[scmRepositories]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsScmPullRequests: String, Codable, CaseIterable {
            case destinationBranchName
            case destinationRepositoryName
            case destinationRepositoryOwner
            case isClosed
            case isCrossRepository
            case number
            case repository
            case sourceBranchName
            case sourceRepositoryName
            case sourceRepositoryOwner
            case title
            case webURL = "webUrl"
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
            case repository
        }
    }
}
