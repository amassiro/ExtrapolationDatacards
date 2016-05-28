#
# Definition of what to do for each nuisance
#
#
# nuisancesScaling = {}
#


nuisancesScaling['_ibin_']  = {
               'scale'  : 'asLumi',
               'veto'   : ['Fake_ibin']
               #'scale'  : 'asSqrtLumi',               
              }

nuisancesScaling['Fake_ibin']  = {
               'scale'  : 'asSqrtLumi',               
              }




nuisancesScaling['CMS_btag']  = {
               'scale'  : 'asSqrtLumi',      
               'asymptotic' : 0.1   # minimum is 10% w.r.t. the current uncertainty
              }




