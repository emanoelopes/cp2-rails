# Be sure to restart your server when you modify this file.

<<<<<<< HEAD
# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Agenda::Application.config.secret_key_base = '5d857d95c95d764ccbfc47083c9400aa18331816b3fe2862093c8cab7efca5fbfd14da1464cc28cf28f227e16aab880859c0c84e71895982bdef55ef8c7cbdd4'
=======
# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
Agenda::Application.config.secret_token = 'b734317a8fd8583217096a040361249265b0a0a5df62b7f58525ac2160cc3fe1b9067034e536bb345d98308c9ad536603768fc938aea85af1950cb86557f633c'
>>>>>>> 260ae28b10abab4d1fb71ad9ae228f5598fac045
