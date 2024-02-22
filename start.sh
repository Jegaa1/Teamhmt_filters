if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Jegaa1/Teamhmt_filters.git /Teamhmt_filters
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Teamhmt_filters
fi
cd /Teamhmt_filters
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
