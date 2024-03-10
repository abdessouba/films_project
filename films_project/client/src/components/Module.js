import React from 'react'
import "../style/module.css"

const Module = ({children}) => {
  return (
    <div id='module' className='bg-slate-800 opacity-90 w-[600px] h-[540px] p-10 rounded-lg relative shadow-lg shadow-slate-700'>{children}</div>
  )
}

export default Module