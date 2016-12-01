require "uri"

module SwaggerClient
  class UsersAPIApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Returns all users&#39; data
    # Returns all users&#39; data
    # @param [Hash] opts the optional parameters
    # @return [Array<User>]
    def users_api_index(opts = {})
      data, status_code, headers = users_api_index_with_http_info(opts)
      return data
    end

    # Returns all users&#39; data
    # Returns all users&#39; data
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<User>, Fixnum, Hash)>] Array<User> data, response status code and response headers
    def users_api_index_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersAPIApi#users_api_index ..."
      end
      
      # resource path
      path = "/users".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<User>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAPIApi#users_api_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a new user for the given data
    # Creates a new user for the given data
    # @param email Email address for the new user, needs to be unique.
    # @param password Password for the user.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Full name of the user.
    # @return [User]
    def users_api_create(email, password, opts = {})
      data, status_code, headers = users_api_create_with_http_info(email, password, opts)
      return data
    end

    # Creates a new user for the given data
    # Creates a new user for the given data
    # @param email Email address for the new user, needs to be unique.
    # @param password Password for the user.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Full name of the user.
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def users_api_create_with_http_info(email, password, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersAPIApi#users_api_create ..."
      end
      
      # verify the required parameter 'email' is set
      fail "Missing the required parameter 'email' when calling users_api_create" if email.nil?
      
      # verify the required parameter 'password' is set
      fail "Missing the required parameter 'password' when calling users_api_create" if password.nil?
      
      # resource path
      path = "/users".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'email'] = email
      query_params[:'password'] = password
      query_params[:'name'] = opts[:'name'] if opts[:'name']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAPIApi#users_api_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a user&#39;s data for a given user by uuid
    # Returns a user&#39;s data for a given user by uuid
    # @param id Scope response to id
    # @param [Hash] opts the optional parameters
    # @return [User]
    def users_api_show(id, opts = {})
      data, status_code, headers = users_api_show_with_http_info(id, opts)
      return data
    end

    # Returns a user&#39;s data for a given user by uuid
    # Returns a user&#39;s data for a given user by uuid
    # @param id Scope response to id
    # @param [Hash] opts the optional parameters
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def users_api_show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersAPIApi#users_api_show ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling users_api_show" if id.nil?
      
      # resource path
      path = "/users/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAPIApi#users_api_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




