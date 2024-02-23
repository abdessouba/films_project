import React from 'react'
import { Link } from 'react-router-dom'
const FilmComponent = ({film}) => {
  return (
    <Link to={`/watch/${film.id}`} className=' max-h-[600px] max-w-[230px] pb-9 cursor-pointer'>
        <img src={film.image_src} className='rounded-t-md max-w-[230px] hover:scale-105 transition'/>
        <div className=''>
            <div className='flex justify-between items-center pt-2'>
                <h1 className='text-[20px] font-bold'>{film.title}</h1>
                <p className='text-yellow-300'>{film.release_date}</p>
            </div>
            <div className='flex justify-between items-center mt-4'>
                <div className='border-2 px-2 text-yellow-300'>2K</div>
                <div className='flex justify-between items-center'>
                    <p>{film.video_time} min</p>
                    <p className='ml-2'>3.5</p>
                </div>
            </div>
        </div>
    </Link>
  )
}

export default FilmComponent