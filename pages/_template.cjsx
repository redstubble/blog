React = require 'react'
Router = require 'react-router'
{RouteHandler, Link} = Router
{Container, Grid, Breakpoint, Span} = require 'react-responsive-grid'
DocumentTitle = require 'react-document-title'
require '../css/styles.css'

{rhythm, fontSizeToMS} = require 'blog-typography'
{config} = require 'config'

module.exports = React.createClass
  render: ->
    if @props.location.pathname is "/"
      header = (
        <h1
          style={{
            fontSize: fontSizeToMS(1.5).fontSize
            lineHeight: fontSizeToMS(1.5).lineHeight
            marginBottom: rhythm(1.5)
            marginTop: 0
          }}
        >
          <Link
            style={{
              textDecoration: 'none'
              boxShadow: 'none'
              color: 'inherit'
            }}
            to="/"
          >
            {config.blogTitle}
          </Link>
        </h1>
      )
    else
      header = (
        <h4
          style={{
            marginTop: 0
          }}
        >
          <Link
            style={{
              textDecoration: 'none'
              boxShadow: 'none'
              color: 'inherit'
            }}
            to="/"
          >
            {config.blogTitle}
          </Link>
        </h4>
      )

    <DocumentTitle title="Kyle Mathews">
      <Container
        style={{
          maxWidth: '750px'
          padding: "#{rhythm(2)} #{rhythm(1/2)}"
        }}
      >
        {header}
        {this.props.children}
      </Container>
    </DocumentTitle>