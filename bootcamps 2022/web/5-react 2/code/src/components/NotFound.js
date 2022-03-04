import React from 'react'
import { Link } from 'react-router-dom'

function NotFound() {
  return (
    <div>
        <h2>404 Error</h2>
        <p>Page not found</p>
        <Link to="/">Back to Home Page</Link>
    </div>
  )
}

export default NotFound