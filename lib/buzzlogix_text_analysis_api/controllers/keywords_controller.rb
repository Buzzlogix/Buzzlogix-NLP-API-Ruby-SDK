# This file was automatically generated for Buzzlogix by APIMATIC BETA v2.0 on 11/18/2015

module BuzzlogixTextAnalysisApi
  class KeywordsController

    # Initializer with authentication and configuration parameters
    def initialize(apikey)
        @apikey = apikey;
    end

    # The text should be provided as text/plain in the body
    # @param [String] body Required parameter: Supply text to be classified.
    # @return mixed response from the API call
    def create_return_english_keywords body
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/keywords"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json",
        "apikey" => @apikey
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:body.to_json

      # Error handling using HTTP status codes
      if response.code == 401
        raise APIException.new "No API Key found in headers, body or querystring", 401, response.raw_body
      elsif response.code == 403
        raise APIException.new "Invalid authentication credentials", 403, response.raw_body
      elsif response.code == 429
        raise APIException.new "API rate limit exceeded", 429, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # The text should be provided as multipart/form-data with the key 'text'. Files can be uploaded.
    # @param [String] apikey Required parameter: Supply your API key.
    # @param [String] body Required parameter: Supply text to be classified.
    # @return mixed response from the API call
    def create_return_english_keywords_form apikey, body
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/keywords/form"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json",
        "apikey" => @apikey,
        "apikey" => apikey
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:body.to_json

      # Error handling using HTTP status codes
      if response.code == 401
        raise APIException.new "No API Key found in headers, body or querystring", 401, response.raw_body
      elsif response.code == 403
        raise APIException.new "Invalid authentication credentials", 403, response.raw_body
      elsif response.code == 429
        raise APIException.new "API rate limit exceeded", 429, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

  end
end