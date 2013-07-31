get '/' do
  erb :index
end

post '/' do 
  user = params[:username]
  @repo = params[:reponame]
  @user_repos = Github.repos.list(user: user)
  @commits = Github.repos.commits.list(user, @repo)
  @forks = Github.repos.forks.list(user, @repo)
  erb :index
end