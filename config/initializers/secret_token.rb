# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
PgApp::Application.config.secret_key_base = '3af67d354e70d10bdfee57fbaeabebb4a433d6abd19a331b509ba2cd63762cb50f58ff213640e888ebb57217ef5dc5434db35653bf26cc95feb0d7ccae71ce50'
