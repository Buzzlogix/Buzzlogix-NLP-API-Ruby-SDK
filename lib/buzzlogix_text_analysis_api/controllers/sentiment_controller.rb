# This file was automatically generated for buzzlogix by APIMATIC BETA v2.0 on 12/06/2015

module BuzzlogixTextAnalysisApi
  class SentimentController

    # Initializer with authentication and configuration parameters
    def initialize(x_mashape_key)
        @x_mashape_key = x_mashape_key;
    end

    # The text should be provided as text/plain in the body
    # @param [String] body Required parameter: Supply text to be classified.
    # @return mixed response from the API call
    def create_return_english_general_sentiment_plaintext body
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/sentiment"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json",
        "X-Mashape-Key" => @x_mashape_key
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:body.to_json

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # The text should be provided as multipart/form-data with the key 'text'. Files can be uploaded.
    # @param [File] text Required parameter: Supply text to be classified.
    # @return mixed response from the API call
    def create_return_english_general_sentiment_multipart_form text
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/sentiment"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json",
        "X-Mashape-Key" => @x_mashape_key
      }

      # prepare parameters
      parameters = {
        "text" => text
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Return the sentiment of an English text supplied in an encoded form using key 'text'.
    # @param [String] text Required parameter: Supply the text to be classified.
    # @return mixed response from the API call
    def create_return_english_general_sentiment_encoded_form text
      # the base uri for api requests
      query_builder = Configuration.BASE_URI.dup

      # prepare query string for API call
      query_builder << "/sentiment"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "APIMATIC 2.0",
        "accept" => "application/json",
        "X-Mashape-Key" => @x_mashape_key
      }

      # prepare parameters
      parameters = {
        "text" => text
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:parameters

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

  end
end