take 1st id of subscriptions and delete
```
doppler run -- ./scripts/list-subscriptions.sh | jq -r '.data[0].id' | doppler run -- xargs ./scripts/delete-subscription.sh
echo $TWITCH_CLIENT_ID
```