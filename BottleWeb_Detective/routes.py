"""
Routes and views for the bottle application.
"""

from bottle import route, view
from datetime import datetime

@route('/')
@route('/home')
@view('index')
def home():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )

@route('/contact')
@view('contact')
def contact():
    """Renders the contact page."""
    return dict(
        title='Contact',
        message='Your contact page.',
        year=datetime.now().year
    )

@route('/about')
@view('about')
def about():
    """Renders the about page."""
    return dict(
        title='About',
        message='Your application description page.',
        year=datetime.now().year
    )


@route('/employees')
@view('team')
def services():
    """Renders the team page."""
    return dict(
        title='Team',
        year=datetime.now().year
    )

@route('/services')
@view('services')
def services():
    """Renders the services page."""
    return dict(
        title='Services',
        year=datetime.now().year
    )

@route('/team')
@view('team')
def team():
    """Renders the team page."""
    return dict(
        title='Employee',
        year=datetime.now().year
    )

#страница актуальных новинок
@route('/new')
@view('new')
def novelties():
    """Renders the novelties page."""
    return dict(
        title='Актуальные новинки',
        year=datetime.now().year
    )