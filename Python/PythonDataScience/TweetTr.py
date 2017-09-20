import tweepy
'''from TextBlob import textblob'''

consumer_key ='G6pPcrK3Wp5ZhrPBuyLWUe3Bb'
consumer_secret = 'Au0MCYS6uMsVXfWAFbLlW4Xsv89hXVU8fSMXca1q2SbkhfbhDj'

access_token = '870740892247785473-29cSf9DLnnPJiLNl8Bz8tzL0TKvwfie'
access_token_secret = 'RvDwr2StU9U9M7IlcA4HOUa0lIRHZguMnronF8oTFk5hY'

auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)

public_tweets = api.search('Crypto')

for tweet in public_tweets:
	print(tweet.txt)
	analysis = TextBlob(tweet.txt)
	print(analysis.sentiment)
