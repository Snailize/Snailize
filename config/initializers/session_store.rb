# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_snailize_session',
  :secret      => '248f6b6702a1c68e5e1d11efe9f99ce05413e35b8b3319e6db9c74ed6895433f3aeff2364069a41b3182cba9ec4cad4d988c00366ad88eb33714e93b3915001a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
