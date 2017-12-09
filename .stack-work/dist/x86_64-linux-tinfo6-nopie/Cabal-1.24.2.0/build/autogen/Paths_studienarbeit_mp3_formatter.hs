{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_studienarbeit_mp3_formatter (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/robin/Workspaces/atom/haskell_project/studienarbeit-mp3-formatter/.stack-work/install/x86_64-linux-tinfo6-nopie/lts-9.17/8.0.2/bin"
libdir     = "/home/robin/Workspaces/atom/haskell_project/studienarbeit-mp3-formatter/.stack-work/install/x86_64-linux-tinfo6-nopie/lts-9.17/8.0.2/lib/x86_64-linux-ghc-8.0.2/studienarbeit-mp3-formatter-0.1.0.0-2bCzJDMcDFYDnyETEuPbbT"
dynlibdir  = "/home/robin/Workspaces/atom/haskell_project/studienarbeit-mp3-formatter/.stack-work/install/x86_64-linux-tinfo6-nopie/lts-9.17/8.0.2/lib/x86_64-linux-ghc-8.0.2"
datadir    = "/home/robin/Workspaces/atom/haskell_project/studienarbeit-mp3-formatter/.stack-work/install/x86_64-linux-tinfo6-nopie/lts-9.17/8.0.2/share/x86_64-linux-ghc-8.0.2/studienarbeit-mp3-formatter-0.1.0.0"
libexecdir = "/home/robin/Workspaces/atom/haskell_project/studienarbeit-mp3-formatter/.stack-work/install/x86_64-linux-tinfo6-nopie/lts-9.17/8.0.2/libexec"
sysconfdir = "/home/robin/Workspaces/atom/haskell_project/studienarbeit-mp3-formatter/.stack-work/install/x86_64-linux-tinfo6-nopie/lts-9.17/8.0.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "studienarbeit_mp3_formatter_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "studienarbeit_mp3_formatter_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "studienarbeit_mp3_formatter_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "studienarbeit_mp3_formatter_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "studienarbeit_mp3_formatter_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "studienarbeit_mp3_formatter_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
