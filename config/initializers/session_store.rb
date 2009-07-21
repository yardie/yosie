# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_yosite_session',
  :secret      => '3585ea28540f6df48350e5bb4a4959a96dbe17e5dbeb32fedb5ea7015677a3b262dd207bb1ddd52ba247d3a105a37f7a7b719df416021ffacf7d1287ba943ad3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
