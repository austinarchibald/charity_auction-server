RSpec.describe "OAuth password flow" do

  let :email_address do
    "test@test.com"
  end

  let :password do
    "password"
  end

  let! :user do
    FactoryGirl.create(:user, email_address: email_address, password: password)
  end

  it "creates a token and returns it when the credentials are valid" do
    post "/oauth/token", grant_type: "password", username: email_address, password: password
    expect(response.status).to eq 200
    expect(JSON.parse(response.body)["access_token"]).not_to be_nil
  end

  it "does not issue a token if the credentials are not valid" do
    post "/oauth/token", grant_type: "password", username: email_address, password: "blah"
    expect(response.status).to eq 401
  end
end