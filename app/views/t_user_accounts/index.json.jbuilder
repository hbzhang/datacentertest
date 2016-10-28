json.array!(@t_user_accounts) do |t_user_account|
  json.extract! t_user_account, :id
  json.url t_user_account_url(t_user_account, format: :json)
end
