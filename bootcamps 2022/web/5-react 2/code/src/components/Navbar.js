import React from 'react'
import { Link } from 'react-router-dom'

function Navbar() {
  return (
    <div className='navbar'>
        <h1>My Blog</h1>
        <div className='links'>
            <Link to='/'>Home</Link>
            <Link to='/about'>About</Link>
            <Link to='/new'>New Blog</Link>
        </div>
    </div>
  )
}

export default Navbar