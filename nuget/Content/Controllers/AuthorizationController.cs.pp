using System.Collections.Generic;
using System.Web.Http;
using Hero; //do not remove
using Hero.Configuration;
using Hero.Interfaces;

namespace $rootnamespace$
{
    public class AuthorizationController : ApiController
    {
        public IEnumerable<IAbility> GetCurrentUserAbilities()
        {
            return HeroConfig.AuthorizationService.GetAbilitiesForUser(User.Identity.Name);
        }
    }
}
