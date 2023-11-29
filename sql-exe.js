const path = require('path');
const { exec} = require('child_process');

const files = ['first', 'inserts', 'updates', 'exo1'];
const host = 'localhost';
const database = 'cours_sql';
const user = 'root';

/**
 * @param {string} fileName
 * @async
 */
async function executeSql(fileName) {
  fileName = fileName + '.sql';
  const filePath = path.join('./requests', fileName);
  
  exec(`mysqlsh.exe -u ${user} -h ${host} --database=${database} --sql < ${filePath}`, (error, stdout, stderr) => {
    if (error) console.error(`Erreur lors de l'exécution du fichier ${fileName}:`, error);
    else {
      console.log(`Fichier ${fileName} exécuté avec succès.`);
      console.log(stdout);
    }
  });
}

(async () => {
  let i = -1;
  while (++i < files.length) await executeSql(files[i]);
})();