module AuthenticationRails
  class OmniauthCallbacksController < DeviseTokenAuth::OmniauthCallbacksController
    protected
    # break out provider attribute assignment for easy method extension
    def assign_provider_attrs(user, auth_hash)
      if auth_hash['provider'] == 'facebook'
        user.assign_attributes({
          nickname: auth_hash['info']['nickname'],
          name:     auth_hash['info']['name'],
          image:    auth_hash['info']['image'],
          email:    auth_hash['info']['email'],
          uid:      auth_hash['info']['email']
        })
      else
        super
      end
    end
  end
end