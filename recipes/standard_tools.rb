# standard tools 

include_recipe "chocolatey"

%w{ 7zip AdobeAIR dropbox HipChat keepass notepadplusplus skype sublimetext2 sysinternals virtualbox}.each do |pack|
  chocolatey pack
end

