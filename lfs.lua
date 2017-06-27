local lfs = {}

lfs.dir = function(path)
  local fileListInfo = io.popen('ls ' .. path);
  local fileList = {};
  for line in fileListInfo:lines() do
    table.insert(fileList, line)
  end
  return fileList
end

return lfs