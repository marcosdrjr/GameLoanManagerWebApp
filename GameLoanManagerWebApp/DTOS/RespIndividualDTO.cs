using System;
using System.Collections.Generic;
using System.Text;

namespace GameLoanManagerWebApp.DTOS
{
    public class RespIndividualDTO : IndividualDTO
    {
        public bool status { get; set; }
        public DateTime create_at { get; set; }
        public DateTime update_at { get; set; }
    }
}
