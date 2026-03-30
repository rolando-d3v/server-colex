const fs = require('fs');
const path = require('path');

const excludeDirs = ['dist', 'node_modules', '.git'];
const excludeFiles = ['package-lock.json', '.env', 'generate_skill.js', 'skill.md'];

function getAllFiles(dirPath, arrayOfFiles) {
  const files = fs.readdirSync(dirPath);

  arrayOfFiles = arrayOfFiles || [];

  files.forEach(function(file) {
    const fullPath = path.join(dirPath, file);
    if (fs.statSync(fullPath).isDirectory()) {
      if (!excludeDirs.includes(file)) {
        arrayOfFiles = getAllFiles(fullPath, arrayOfFiles);
      }
    } else {
      if (!excludeFiles.includes(file)) {
        arrayOfFiles.push(fullPath);
      }
    }
  });

  return arrayOfFiles;
}

const rootDir = 'c:\\Users\\RolandoAsus\\Documents\\react\\server-colex';
const files = getAllFiles(rootDir);

let output = '# Project server-colex\n\n';

files.forEach(file => {
  const relativePath = path.relative(rootDir, file).replace(/\\/g, '/');
  const content = fs.readFileSync(file, 'utf8');
  let ext = path.extname(file).substring(1);
  if (!ext) ext = 'txt';
  
  output += `\n\n## File: ${relativePath}\n`;
  output += '```' + ext + '\n';
  output += content;
  output += '\n```\n';
});

fs.writeFileSync(path.join(rootDir, 'skill.md'), output);
console.log('Successfully created skill.md');
