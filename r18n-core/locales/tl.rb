module R18n
  class Locales::Tl < Locale
    set title: 'Tagalog',
        sublocales: [],

        week_start: :sunday,
        wday_names: %w{Linggo Lunes Martes Miyerkules Huwebes Biyernes Sabado},
        wday_abbrs: %w{Lin Lun Mar Miy Huw Biy Sab},

        month_names: %w{Enero Pebrero Marso Abril Mayo Hunyo Hulyo Agosto Setyembre Oktubre Nobyembre Disyembre},
        month_abbrs: %w{Ene Peb Mar Abr May Hun Hul Ago Set Okt Nob Dis},


        date_format: '%d/%m/%Y',
        full_format: '%e ng %B',
        year_format: '_, %Y',

        number_decimal: '.',
        number_group:   ','

    def ordinalize(n)
      if (11..13).include?(n % 100)
        "#{n}ika"
      else
        case n % 10
        when 1; "#{n}ika"
        when 2; "#{n}ika"
        when 3; "#{n}ika"
        else    "#{n}ika"
        end
      end
    end

    def format_date_full(date, year = true, *params)
      format = full_format
      format = year_format.sub('_', format) if year
      strftime(date, format.sub('%e', ordinalize(date.mday)))
    end
  end
end
