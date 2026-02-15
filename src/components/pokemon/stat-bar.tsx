interface StatBarProps {
  label: string;
  shortLabel: string;
  value: number;
  maxValue?: number;
}

function getStatColor(value: number): string {
  if (value < 60) return "bg-red-500";
  if (value < 90) return "bg-orange-500";
  if (value < 120) return "bg-yellow-500";
  if (value < 150) return "bg-green-500";
  return "bg-blue-500";
}

export function StatBar({
  label,
  shortLabel,
  value,
  maxValue = 255,
}: StatBarProps) {
  const percent = Math.min((value / maxValue) * 100, 100);

  return (
    <div className="flex items-center gap-2">
      <span
        className="w-8 text-[10px] font-medium text-muted-foreground text-right uppercase"
        title={label}
      >
        {shortLabel}
      </span>
      <span className="w-8 text-xs font-mono text-right">{value}</span>
      <div className="flex-1 h-2 bg-muted rounded-sm overflow-hidden">
        <div
          className={`h-full rounded-sm transition-all ${getStatColor(value)}`}
          style={{ width: `${percent}%` }}
        />
      </div>
    </div>
  );
}
