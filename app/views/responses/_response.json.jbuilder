json.extract! response, :id, :test_case, :example, :participants_id, :responded_ms, :given_answer, :readable_score, :comments, :created_at, :updated_at
json.url response_url(response, format: :json)
