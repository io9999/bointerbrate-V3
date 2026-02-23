import { useState } from 'react'
import axios from "axios"
import { useEffect } from 'react'

function App() {
  const [levelName, setLevelName] = useState("");

  useEffect(() => {

    const fetchLevels = async () => {
      try {
        const response = await axios.get("http://localhost:3000/api/get-them-levels");

        console.log(response);
        setLevelName(response.data[0]);

      } catch(err) {
        console.log(err);
      }
    }

    fetchLevels();

  }, []);

  return (
    <>
      <p>{levelName.level_name}</p>
    </>
  )
}

export default App
