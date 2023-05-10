url = "https://pypi.org/project/pandas/#history"

from gazpacho import get, Soup

html = get(url)
soup = Soup(html)
cards = soup.find("a", {"class": "card"})


a = cards[0].find("p", {"class": "release__version"}, partial=False).text
print(a)
